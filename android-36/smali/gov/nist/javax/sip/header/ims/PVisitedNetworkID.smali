.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PVisitedNetworkID.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private greylist isQuoted:Z

.field private greylist networkID:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 63
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor greylist <init>(Lgov/nist/core/Token;)V
    .registers 3
    .param p1, "tok"    # Lgov/nist/core/Token;

    .line 76
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "networkID"    # Ljava/lang/String;

    .line 69
    const-string v0, "P-Visited-Network-ID"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 156
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    .line 157
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 158
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    iput-object v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 159
    :cond_e
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    iput-boolean v1, v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 160
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 88
    iget-boolean v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    if-eqz v1, :cond_2e

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35

    .line 91
    :cond_2e
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_35
    :goto_35
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 145
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 147
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;

    .line 148
    .local v0, "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 149
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->equalParameters(Ljavax/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 148
    :goto_1f
    return v1

    .line 151
    .end local v0    # "o":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    :cond_20
    return v1
.end method

.method public greylist getVisitedNetworkID()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist setVisitedNetworkID(Lgov/nist/core/Token;)V
    .registers 4
    .param p1, "networkID"    # Lgov/nist/core/Token;

    .line 120
    if-eqz p1, :cond_c

    .line 123
    invoke-virtual {p1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 127
    return-void

    .line 121
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setVisitedNetworkID(Ljava/lang/String;)V
    .registers 4
    .param p1, "networkID"    # Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_8

    .line 109
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 113
    return-void

    .line 107
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
