.class public Lgov/nist/javax/sip/header/RAck;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RAck.java"

# interfaces
.implements Ljavax/sip/header/RAckHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0xa533768a7c9b3d6L


# instance fields
.field protected greylist cSeqNumber:J

.field protected greylist method:Ljava/lang/String;

.field protected greylist rSeqNumber:J


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 58
    const-string v0, "RAck"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected greylist encodeBody()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v1, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public greylist getCSeqNumber()I
    .registers 3

    .line 81
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public greylist getCSeqNumberLong()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    return-wide v0
.end method

.method public greylist getCSequenceNumber()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    return-wide v0
.end method

.method public greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getRSeqNumber()I
    .registers 3

    .line 109
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public greylist getRSequenceNumber()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    return-wide v0
.end method

.method public greylist setCSeqNumber(I)V
    .registers 4
    .param p1, "cSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 117
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 118
    return-void
.end method

.method public greylist setCSequenceNumber(J)V
    .registers 6
    .param p1, "cSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 135
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_12

    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 137
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    .line 139
    return-void

    .line 136
    :cond_12
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CSeq # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public greylist setRSeqNumber(I)V
    .registers 4
    .param p1, "rSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 146
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 147
    return-void
.end method

.method public greylist setRSequenceNumber(J)V
    .registers 7
    .param p1, "rSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 154
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    .line 155
    return-void

    .line 153
    :cond_14
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rSeq # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
