.class public Lgov/nist/javax/sip/header/CSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "CSeq.java"

# interfaces
.implements Ljavax/sip/header/CSeqHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x4b0540b6704c4dfeL


# instance fields
.field protected greylist method:Ljava/lang/String;

.field protected greylist seqno:Ljava/lang/Long;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 67
    const-string v0, "CSeq"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor greylist <init>(JLjava/lang/String;)V
    .registers 5
    .param p1, "seqno"    # J
    .param p3, "method"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    .line 79
    invoke-static {p3}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/CSeq;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/CSeq;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 116
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Ljavax/sip/header/CSeqHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 91
    move-object v0, p1

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    .line 92
    .local v0, "o":Ljavax/sip/header/CSeqHeader;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v2

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 93
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 92
    :goto_25
    return v1

    .line 95
    .end local v0    # "o":Ljavax/sip/header/CSeqHeader;
    :cond_26
    return v1
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSeqNumber()J
    .registers 3

    .line 179
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getSequenceNumber()I
    .registers 2

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    if-nez v0, :cond_6

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "meth"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_9

    .line 161
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->method:Ljava/lang/String;

    .line 162
    return-void

    .line 158
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, CSeq, setMethod(), the meth parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSeqNumber(J)V
    .registers 6
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 133
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2f

    .line 137
    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/CSeq;->seqno:Ljava/lang/Long;

    .line 143
    return-void

    .line 138
    :cond_16
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2f
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAIN-SIP Exception, CSeq, setSequenceNumber(), the sequence number parameter is < 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setSequenceNumber(I)V
    .registers 4
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 149
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    .line 150
    return-void
.end method
