.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PVisitedNetworkID.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private isQuoted:Z

.field private networkID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "P-Visited-Network-ID"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 61
    return-void
.end method

.method public constructor <init>(Lgov/nist/core/Token;)V
    .locals 1
    .param p1, "tok"    # Lgov/nist/core/Token;

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "P-Visited-Network-ID"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 77
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    #@d
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    const-string/jumbo v0, "P-Visited-Network-ID"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    #@9
    .line 67
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 156
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@6
    .line 157
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 158
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@c
    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@e
    .line 159
    :cond_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    #@10
    iput-boolean v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    #@12
    .line 160
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 85
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 88
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "\""

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "\""

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    .line 94
    :cond_0
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    #@33
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_1

    #@39
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, ";"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    #@47
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    return-object v1

    #@5b
    .line 91
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 145
    instance-of v2, p1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 147
    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    #@8
    .line 148
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;->getVisitedNetworkID()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 149
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->equalParameters(Ljavax/sip/header/Parameters;)Z

    #@19
    move-result v1

    #@1a
    .line 148
    :cond_0
    return v1

    #@1b
    .line 151
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    :cond_1
    return v1
.end method

.method public getVisitedNetworkID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@2
    return-object v0
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
    .line 138
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method

.method public setVisitedNetworkID(Lgov/nist/core/Token;)V
    .locals 2
    .param p1, "networkID"    # Lgov/nist/core/Token;

    #@0
    .prologue
    .line 120
    if-nez p1, :cond_0

    #@2
    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, " the networkID parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 123
    :cond_0
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@11
    .line 126
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    #@14
    .line 119
    return-void
.end method

.method public setVisitedNetworkID(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    if-nez p1, :cond_0

    #@2
    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, " the networkID parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 109
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    #@d
    .line 112
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    #@10
    .line 105
    return-void
.end method
