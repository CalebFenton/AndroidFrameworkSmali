.class public Lgov/nist/javax/sip/address/TelephoneNumber;
.super Lgov/nist/javax/sip/address/NetObject;
.source "TelephoneNumber.java"


# static fields
.field public static final greylist ISUB:Ljava/lang/String; = "isub"

.field public static final greylist PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final greylist POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final greylist PROVIDER_TAG:Ljava/lang/String; = "provider-tag"


# instance fields
.field protected greylist isglobal:Z

.field protected greylist parameters:Lgov/nist/core/NameValueList;

.field protected greylist phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 61
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 239
    invoke-super {p0}, Lgov/nist/javax/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    .line 240
    .local v0, "retval":Lgov/nist/javax/sip/address/TelephoneNumber;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_14

    .line 241
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    .line 242
    :cond_14
    return-object v0
.end method

.method public greylist deleteParm(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 69
    return-void
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 189
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    if-eqz v0, :cond_9

    .line 190
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 193
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 196
    :cond_20
    return-object p1
.end method

.method public greylist getIsdnSubaddress()Ljava/lang/String;
    .registers 3

    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "isub"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 211
    const/4 v1, 0x0

    return-object v1

    .line 212
    :cond_a
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_16

    .line 213
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameters()Lgov/nist/core/NameValueList;
    .registers 2

    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public greylist getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPostDial()Ljava/lang/String;
    .registers 3

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist hasIsdnSubaddress()Z
    .registers 2

    .line 113
    const-string v0, "isub"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->hasParm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist hasParm(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pname"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist hasPostDial()Z
    .registers 3

    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist isGlobal()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    return v0
.end method

.method public greylist removeIsdnSubaddress()V
    .registers 2

    .line 134
    const-string v0, "isub"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->deleteParm(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public greylist removeParameter(Ljava/lang/String;)V
    .registers 3
    .param p1, "parameter"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 231
    return-void
.end method

.method public greylist removePostDial()V
    .registers 3

    .line 127
    iget-object v0, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "postdial"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 128
    return-void
.end method

.method public greylist setGlobal(Z)V
    .registers 2
    .param p1, "g"    # Z

    .line 149
    iput-boolean p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->isglobal:Z

    .line 150
    return-void
.end method

.method public greylist setIsdnSubaddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "isub"    # Ljava/lang/String;

    .line 174
    const-string v0, "isub"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public greylist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 234
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 236
    return-void
.end method

.method public greylist setParameters(Lgov/nist/core/NameValueList;)V
    .registers 2
    .param p1, "p"    # Lgov/nist/core/NameValueList;

    .line 142
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    .line 143
    return-void
.end method

.method public greylist setParm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 165
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 167
    return-void
.end method

.method public greylist setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "num"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public greylist setPostDial(Ljava/lang/String;)V
    .registers 4
    .param p1, "p"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "postdial"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .local v0, "nv":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/javax/sip/address/TelephoneNumber;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    .line 158
    return-void
.end method
