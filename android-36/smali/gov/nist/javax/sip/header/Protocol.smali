.class public Lgov/nist/javax/sip/header/Protocol;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "Protocol.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1ec381b4ff51f3c0L


# instance fields
.field protected greylist protocolName:Ljava/lang/String;

.field protected greylist protocolVersion:Ljava/lang/String;

.field protected greylist transport:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 147
    const-string v0, "SIP"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 148
    const-string v0, "2.0"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 149
    const-string v0, "UDP"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 71
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 72
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    return-object p1
.end method

.method public greylist getProtocol()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getProtocolName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getProtocolVersion()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setProtocol(Ljava/lang/String;)V
    .registers 6
    .param p1, "name_and_version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 105
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, "slash":I
    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 107
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 108
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 110
    return-void

    .line 109
    :cond_18
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Missing \'/\' in protocol"

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist setProtocolName(Ljava/lang/String;)V
    .registers 2
    .param p1, "p"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public greylist setProtocolVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "p"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public greylist setTransport(Ljava/lang/String;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lgov/nist/javax/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 141
    return-void
.end method
