.class public Lgov/nist/javax/sip/header/CSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CSeq.java"

# interfaces
.implements Ljavax/sip/header/CSeqHeader;


# static fields
.field private static final serialVersionUID:J = -0x4b0540b6704c4dfeL


# instance fields
.field protected method:Ljava/lang/String;

.field protected seqno:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "CSeq"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 66
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "seqno"    # J
    .param p3, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    #@3
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@9
    .line 79
    invoke-static {p3}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    #@f
    .line 76
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/header/CSeq;->headerName:Ljava/lang/String;

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
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "\r\n"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, " "

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    instance-of v2, p1, Ljavax/sip/header/CSeqHeader;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 91
    check-cast v0, Ljavax/sip/header/CSeqHeader;

    #@8
    .line 92
    .local v0, "o":Ljavax/sip/header/CSeqHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    #@b
    move-result-wide v2

    #@c
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@f
    move-result-wide v4

    #@10
    cmp-long v2, v2, v4

    #@12
    if-nez v2, :cond_0

    #@14
    .line 93
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    .line 92
    :cond_0
    return v1

    #@21
    .line 95
    .end local v0    # "o":Ljavax/sip/header/CSeqHeader;
    :cond_1
    return v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSeqNumber()J
    .locals 2

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 170
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 172
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "meth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    if-nez p1, :cond_0

    #@2
    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 159
    const-string/jumbo v1, "JAIN-SIP Exception, CSeq, setMethod(), the meth parameter is null"

    #@7
    .line 158
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 161
    :cond_0
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    #@11
    .line 156
    return-void
.end method

.method public setSeqNumber(J)V
    .locals 3
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 134
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@8
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is < 0 : "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 134
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 137
    :cond_0
    const-wide v0, 0x80000000L

    #@25
    cmp-long v0, p1, v0

    #@27
    if-lez v0, :cond_1

    #@29
    .line 138
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@2b
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is too large : "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 138
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 142
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    #@49
    .line 132
    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    #@4
    .line 148
    return-void
.end method
