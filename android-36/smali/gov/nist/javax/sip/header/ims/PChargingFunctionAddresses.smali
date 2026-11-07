.class public Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingFunctionAddresses.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 83
    const-string v0, "P-Charging-Function-Addresses"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public greylist addChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 129
    if-eqz p1, :cond_a

    .line 134
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "ccf"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void

    .line 130
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist addEventChargingFunctionAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 212
    if-eqz p1, :cond_a

    .line 217
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "ecf"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void

    .line 213
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist delete(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    .local v0, "li":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 283
    .local v1, "removed":Z
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    .line 285
    .local v2, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v2}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 287
    const/4 v1, 0x1

    goto :goto_7

    .line 291
    .end local v2    # "nv":Lgov/nist/core/NameValue;
    :cond_2e
    return v1
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 96
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getChargingCollectionFunctionAddresses()Ljava/util/ListIterator;
    .registers 6

    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    .local v0, "li":Ljava/util/Iterator;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v1, "ccfLIST":Ljava/util/LinkedList;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    .line 171
    .local v2, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v2}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ccf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 173
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-direct {v3}, Lgov/nist/core/NameValue;-><init>()V

    .line 175
    .local v3, "ccfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v2}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v3    # "ccfNV":Lgov/nist/core/NameValue;
    goto :goto_b

    .line 183
    .end local v2    # "nv":Lgov/nist/core/NameValue;
    :cond_3a
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    return-object v2
.end method

.method public greylist getEventChargingFunctionAddresses()Ljava/util/ListIterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v0, "listw":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lgov/nist/core/NameValue;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, "li":Ljava/util/Iterator;
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 254
    .local v2, "ecfLIST":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/NameValue;>;"
    const/4 v3, 0x0

    .line 255
    .local v3, "removed":Z
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/core/NameValue;

    .line 257
    .local v4, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ecf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 259
    new-instance v5, Lgov/nist/core/NameValue;

    invoke-direct {v5}, Lgov/nist/core/NameValue;-><init>()V

    .line 261
    .local v5, "ecfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 264
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 266
    .end local v5    # "ecfNV":Lgov/nist/core/NameValue;
    goto :goto_10

    .line 269
    .end local v4    # "nv":Lgov/nist/core/NameValue;
    :cond_3f
    return-object v2
.end method

.method public greylist removeChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .registers 5
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 146
    if-eqz p1, :cond_14

    .line 151
    const-string v0, "ccf"

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    return-void

    .line 153
    :cond_b
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "CCF Address Not Removed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 147
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeEventChargingFunctionAddress(Ljava/lang/String;)V
    .registers 5
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 229
    if-eqz p1, :cond_14

    .line 234
    const-string v0, "ecf"

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    return-void

    .line 236
    :cond_b
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "ECF Address Not Removed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 230
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 111
    if-eqz p1, :cond_8

    .line 117
    const-string v0, "ccf"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 112
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setEventChargingFunctionAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 194
    if-eqz p1, :cond_8

    .line 199
    const-string v0, "ecf"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 195
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

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

    .line 296
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
