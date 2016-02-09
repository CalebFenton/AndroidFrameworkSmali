.class public Lgov/nist/javax/sip/address/TelephoneNumber;
.super Lgov/nist/javax/sip/address/NetObject;
.source "TelephoneNumber.java"


# static fields
.field public static final ISUB:Ljava/lang/String; = "isub"

.field public static final PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final PROVIDER_TAG:Ljava/lang/String; = "provider-tag"


# instance fields
.field protected isglobal:Z

.field protected parameters:Lgov/nist/core/NameValueList;

.field protected phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@3
    .line 61
    new-instance v0, Lgov/nist/core/NameValueList;

    #@5
    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@a
    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 239
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    #@6
    .line 240
    .local v0, "retval":Lgov/nist/javax/sip/address/TelephoneNumber;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 241
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@c
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lgov/nist/core/NameValueList;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@14
    .line 242
    :cond_0
    return-object v0
.end method

.method public deleteParm(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@5
    .line 67
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 190
    const/16 v0, 0x2b

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9
    .line 191
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@10
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 193
    const-string/jumbo v0, ";"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 194
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@1e
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@21
    .line 196
    :cond_1
    return-object p1
.end method

.method public getIsdnSubaddress()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "isub"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 209
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@3
    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 210
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@9
    .line 211
    return-object v2

    #@a
    .line 212
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 213
    check-cast v0, Lgov/nist/core/GenericObject;

    #@10
    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 215
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1
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
    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostDial()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "postdial"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public hasIsdnSubaddress()Z
    .locals 1

    #@0
    .prologue
    .line 113
    const-string/jumbo v0, "isub"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->hasParm(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public hasParm(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasPostDial()Z
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "postdial"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isGlobal()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    #@2
    return v0
.end method

.method public removeIsdnSubaddress()V
    .locals 1

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "isub"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->deleteParm(Ljava/lang/String;)V

    #@6
    .line 133
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@5
    .line 229
    return-void
.end method

.method public removePostDial()V
    .locals 2

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "postdial"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    #@8
    .line 126
    return-void
.end method

.method public setGlobal(Z)V
    .locals 0
    .param p1, "g"    # Z

    #@0
    .prologue
    .line 149
    iput-boolean p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    #@2
    .line 148
    return-void
.end method

.method public setIsdnSubaddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "isub"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "isub"

    #@3
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParm(Ljava/lang/String;Ljava/lang/Object;)V

    #@6
    .line 173
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 235
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@a
    .line 233
    return-void
.end method

.method public setParameters(Lgov/nist/core/NameValueList;)V
    .locals 0
    .param p1, "p"    # Lgov/nist/core/NameValueList;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@2
    .line 141
    return-void
.end method

.method public setParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 165
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 166
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@7
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@a
    .line 164
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    #@2
    .line 180
    return-void
.end method

.method public setPostDial(Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    const-string/jumbo v1, "postdial"

    #@5
    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 157
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    #@a
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@d
    .line 155
    return-void
.end method
