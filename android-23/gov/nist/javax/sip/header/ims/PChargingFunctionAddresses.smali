.class public Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PChargingFunctionAddresses.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "P-Charging-Function-Addresses"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 81
    return-void
.end method


# virtual methods
.method public addChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    if-nez p1, :cond_0

    #@2
    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 131
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    #@7
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 134
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    #@d
    const-string/jumbo v1, "ccf"

    #@10
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@13
    .line 127
    return-void
.end method

.method public addEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    if-nez p1, :cond_0

    #@2
    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 214
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    #@7
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 217
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    #@d
    const-string/jumbo v1, "ecf"

    #@10
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@13
    .line 210
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    iget-object v3, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v3}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 282
    .local v0, "li":Ljava/util/Iterator;
    const/4 v2, 0x0

    #@7
    .line 283
    .local v2, "removed":Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lgov/nist/core/NameValue;

    #@13
    .line 285
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2c
    .line 287
    const/4 v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 291
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    return v2
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 94
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@7
    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 96
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->duplicates:Lgov/nist/core/DuplicateNameValueList;

    #@f
    invoke-virtual {v1}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public getChargingCollectionFunctionAddresses()Ljava/util/ListIterator;
    .locals 6

    #@0
    .prologue
    .line 166
    iget-object v4, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v4}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .line 167
    .local v2, "li":Ljava/util/Iterator;
    new-instance v0, Ljava/util/LinkedList;

    #@8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@b
    .line 169
    .local v0, "ccfLIST":Ljava/util/LinkedList;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lgov/nist/core/NameValue;

    #@17
    .line 171
    .local v3, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "ccf"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 173
    new-instance v1, Lgov/nist/core/NameValue;

    #@26
    invoke-direct {v1}, Lgov/nist/core/NameValue;-><init>()V

    #@29
    .line 175
    .local v1, "ccfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v1, v4}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    #@30
    .line 176
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v1, v4}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@37
    .line 178
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 183
    .end local v1    # "ccfNV":Lgov/nist/core/NameValue;
    .end local v3    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method

.method public getEventChargingFunctionAddresses()Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    new-instance v3, Ljava/util/LinkedList;

    #@2
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@5
    .line 251
    .local v3, "listw":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lgov/nist/core/NameValue;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->parameters:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .line 252
    .local v2, "li":Ljava/util/Iterator;
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@e
    move-result-object v0

    #@f
    .line 254
    .local v0, "ecfLIST":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/core/NameValue;>;"
    const/4 v5, 0x0

    #@10
    .line 255
    .local v5, "removed":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lgov/nist/core/NameValue;

    #@1c
    .line 257
    .local v4, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    const-string/jumbo v7, "ecf"

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    .line 259
    new-instance v1, Lgov/nist/core/NameValue;

    #@2b
    invoke-direct {v1}, Lgov/nist/core/NameValue;-><init>()V

    #@2e
    .line 261
    .local v1, "ecfNV":Lgov/nist/core/NameValue;
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v1, v6}, Lgov/nist/core/NameValue;->setName(Ljava/lang/String;)V

    #@35
    .line 262
    invoke-virtual {v4}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v1, v6}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    #@3c
    .line 264
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@3f
    goto :goto_0

    #@40
    .line 269
    .end local v1    # "ecfNV":Lgov/nist/core/NameValue;
    .end local v4    # "nv":Lgov/nist/core/NameValue;
    :cond_1
    return-object v0
.end method

.method public removeChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    if-nez p1, :cond_0

    #@2
    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 148
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    #@7
    .line 147
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 151
    :cond_0
    const-string/jumbo v0, "ccf"

    #@e
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 153
    new-instance v0, Ljava/text/ParseException;

    #@16
    const-string/jumbo v1, "CCF Address Not Removed"

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1d
    throw v0

    #@1e
    .line 144
    :cond_1
    return-void
.end method

.method public removeEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    if-nez p1, :cond_0

    #@2
    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 231
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    #@7
    .line 230
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 234
    :cond_0
    const-string/jumbo v0, "ecf"

    #@e
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 236
    new-instance v0, Ljava/text/ParseException;

    #@16
    const-string/jumbo v1, "ECF Address Not Removed"

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1d
    throw v0

    #@1e
    .line 227
    :cond_1
    return-void
.end method

.method public setChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ccfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    if-nez p1, :cond_0

    #@2
    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 113
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setChargingCollectionFunctionAddress(), the ccfAddress parameter is null."

    #@7
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 117
    :cond_0
    const-string/jumbo v0, "ccf"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 109
    return-void
.end method

.method public setEventChargingFunctionAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ecfAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    if-nez p1, :cond_0

    #@2
    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 196
    const-string/jumbo v1, "JAIN-SIP Exception, P-Charging-Function-Addresses, setEventChargingFunctionAddress(), the ecfAddress parameter is null."

    #@7
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 199
    :cond_0
    const-string/jumbo v0, "ecf"

    #@e
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 192
    return-void
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
    .line 296
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
