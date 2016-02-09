.class public Lgov/nist/javax/sip/address/TelURLImpl;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelURLImpl.java"

# interfaces
.implements Ljavax/sip/address/TelURL;


# static fields
.field private static final serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    #@3
    .line 52
    const-string/jumbo v0, "tel"

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    #@8
    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 176
    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/TelURLImpl;

    #@6
    .line 177
    .local v0, "retval":Lgov/nist/javax/sip/address/TelURLImpl;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 178
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@c
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@14
    .line 179
    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x3a

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b
    .line 167
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@d
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@10
    .line 168
    return-object p1
.end method

.method public getIsdnSubAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getIsdnSubaddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameterNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getParameters()Lgov/nist/core/NameValueList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
    const-string/jumbo v0, "phone-context"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPhoneNumber()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPostDial()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->getPostDial()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->isGlobal()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSipURI()Z
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->removeParameter(Ljava/lang/String;)V

    #@5
    .line 198
    return-void
.end method

.method public setGlobal(Z)V
    .locals 1
    .param p1, "global"    # Z

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    #@5
    .line 114
    return-void
.end method

.method public setIsdnSubAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "isdnSubAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    #@5
    .line 124
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 186
    return-void
.end method

.method public setPhoneContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    if-nez p1, :cond_0

    #@2
    .line 209
    const-string/jumbo v0, "phone-context"

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelURLImpl;->removeParameter(Ljava/lang/String;)V

    #@8
    .line 205
    :goto_0
    return-void

    #@9
    .line 211
    :cond_0
    const-string/jumbo v0, "phone-context"

    #@c
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelURLImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "telephoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    #@5
    .line 141
    return-void
.end method

.method public setPostDial(Ljava/lang/String;)V
    .locals 1
    .param p1, "postDial"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPostDial(Ljava/lang/String;)V

    #@5
    .line 133
    return-void
.end method

.method public setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0
    .param p1, "telephoneNumber"    # Lgov/nist/javax/sip/address/TelephoneNumber;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@2
    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ":"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelURLImpl;->telephoneNumber:Lgov/nist/javax/sip/address/TelephoneNumber;

    #@14
    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
