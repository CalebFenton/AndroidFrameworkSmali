.class public final Lgov/nist/javax/sip/header/Contact;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "Contact.java"

# interfaces
.implements Ljavax/sip/header/ContactHeader;


# static fields
.field public static final greylist ACTION:Ljava/lang/String; = "action"

.field public static final greylist EXPIRES:Ljava/lang/String; = "expires"

.field public static final greylist PROXY:Ljava/lang/String; = "proxy"

.field public static final greylist Q:Ljava/lang/String; = "q"

.field public static final greylist REDIRECT:Ljava/lang/String; = "redirect"

.field private static final whitelist serialVersionUID:J = 0x1746f2cc9301c8b0L


# instance fields
.field private greylist contactList:Lgov/nist/javax/sip/header/ContactList;

.field protected greylist wildCardFlag:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 78
    const-string v0, "Contact"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 221
    invoke-super {p0}, Lgov/nist/javax/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Contact;

    .line 222
    .local v0, "retval":Lgov/nist/javax/sip/header/Contact;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    if-eqz v1, :cond_14

    .line 223
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ContactList;

    iput-object v1, v0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    .line 224
    :cond_14
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 104
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    if-eqz v0, :cond_a

    .line 105
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 109
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 110
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 113
    :cond_19
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :goto_28
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 118
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 123
    :cond_3a
    :goto_3a
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Ljavax/sip/header/ContactHeader;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist getAddress()Ljavax/sip/address/Address;
    .registers 2

    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    return-object v0
.end method

.method public greylist getContactList()Lgov/nist/javax/sip/header/ContactList;
    .registers 2

    .line 130
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    return-object v0
.end method

.method public greylist getContactParms()Lgov/nist/core/NameValueList;
    .registers 2

    .line 152
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getExpires()I
    .registers 2

    .line 159
    const-string v0, "expires"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist getPubGruuParam()Ljava/lang/String;
    .registers 3

    .line 269
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "pub-gruu"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getQValue()F
    .registers 2

    .line 175
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->getParameterAsFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public greylist getSipInstanceParam()Ljava/lang/String;
    .registers 3

    .line 253
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "+sip.instance"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTempGruuParam()Ljava/lang/String;
    .registers 3

    .line 286
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "temp-gruu"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getWildCardFlag()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    return v0
.end method

.method public greylist isWildCard()Z
    .registers 2

    .line 240
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->isWildcard()Z

    move-result v0

    return v0
.end method

.method public greylist removePubGruuParam()V
    .registers 3

    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "pub-gruu"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 266
    :cond_b
    return-void
.end method

.method public greylist removeSipInstanceParam()V
    .registers 3

    .line 248
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "+sip.instance"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 250
    :cond_b
    return-void
.end method

.method public greylist removeTempGruuParam()V
    .registers 3

    .line 281
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "temp-gruu"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 283
    :cond_b
    return-void
.end method

.method public greylist setAddress(Ljavax/sip/address/Address;)V
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 202
    if-eqz p1, :cond_b

    .line 204
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    iput-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    .line 206
    return-void

    .line 203
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setContactList(Lgov/nist/javax/sip/header/ContactList;)V
    .registers 2
    .param p1, "cl"    # Lgov/nist/javax/sip/header/ContactList;

    .line 182
    iput-object p1, p0, Lgov/nist/javax/sip/header/Contact;->contactList:Lgov/nist/javax/sip/header/ContactList;

    .line 183
    return-void
.end method

.method public greylist setExpires(I)V
    .registers 5
    .param p1, "expiryDeltaSeconds"    # I

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    .local v0, "deltaSeconds":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v2, "expires"

    invoke-virtual {v1, v2, v0}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 85
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_c

    .line 86
    invoke-virtual {v0, p2}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_22

    .line 88
    :cond_c
    new-instance v1, Lgov/nist/core/NameValue;

    invoke-direct {v1, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 89
    const-string v1, "methods"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 90
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->setQuotedValue()V

    .line 91
    :cond_1d
    iget-object v1, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 93
    :goto_22
    return-void
.end method

.method public greylist setPubGruuParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "pub-gruu"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public greylist setQValue(F)V
    .registers 5
    .param p1, "qValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 213
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_12

    goto :goto_1a

    .line 214
    :cond_12
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, Contact, setQValue(), the qValue is not between 0 and 1"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "q"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public greylist setSipInstanceParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "+sip.instance"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public greylist setTempGruuParam(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "temp-gruu"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public greylist setWildCard()V
    .registers 2

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    .line 233
    return-void
.end method

.method public greylist setWildCardFlag(Z)V
    .registers 3
    .param p1, "w"    # Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/Contact;->wildCardFlag:Z

    .line 191
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/header/Contact;->address:Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->setWildCardFlag()V

    .line 193
    return-void
.end method
