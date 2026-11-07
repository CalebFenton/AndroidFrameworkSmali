.class public Lgov/nist/javax/sip/address/TelURLImpl;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelURLImpl.java"

# interfaces
.implements Ljavax/sip/address/TelURL;


# static fields
.field private static final whitelist serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected greylist telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 52
    const-string v0, "tel"

    iput-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 176
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelURLImpl;

    .line 177
    .local v0, "retval":Lgov/nist/javax/sip/address/TelURLImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_14

    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 179
    :cond_14
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    return-object p1
.end method

.method public greylist getIsdnSubAddress()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getIsdnSubaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameterNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .line 195
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPhoneContext()Ljava/lang/String;
    .registers 2

    .line 220
    const-string v0, "phone-context"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPostDial()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPostDial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public greylist isGlobal()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->isGlobal()Z

    move-result v0

    return v0
.end method

.method public greylist isSipURI()Z
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->removeParameter(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public greylist setGlobal(Z)V
    .registers 3
    .param p1, "global"    # Z

    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    .line 116
    return-void
.end method

.method public greylist setIsdnSubAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "isdnSubAddress"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public greylist setPhoneContext(Ljava/lang/String;)V
    .registers 3
    .param p1, "phoneContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    const-string v0, "phone-context"

    if-nez p1, :cond_8

    .line 209
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->removeParameter(Ljava/lang/String;)V

    goto :goto_b

    .line 211
    :cond_8
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelURLImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_b
    return-void
.end method

.method public greylist setPhoneNumber(Ljava/lang/String;)V
    .registers 3
    .param p1, "telephoneNumber"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public greylist setPostDial(Ljava/lang/String;)V
    .registers 3
    .param p1, "postDial"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPostDial(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public greylist setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .registers 2
    .param p1, "telephoneNumber"    # Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 60
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 61
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
