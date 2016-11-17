.class public Lgov/nist/javax/sip/header/RAck;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RAck.java"

# interfaces
.implements Ljavax/sip/header/RAckHeader;


# static fields
.field private static final serialVersionUID:J = 0xa533768a7c9b3d6L


# instance fields
.field protected cSeqNumber:J

.field protected method:Ljava/lang/String;

.field protected rSeqNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "RAck"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    iget-wide v2, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    #@7
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v0

    #@12
    .line 70
    iget-wide v2, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@14
    .line 69
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@17
    move-result-object v0

    #@18
    .line 70
    const-string/jumbo v1, " "

    #@1b
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v0

    #@1f
    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    #@21
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public getCSeqNumber()I
    .locals 2

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public getCSeqNumberLong()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@2
    return-wide v0
.end method

.method public getCSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@2
    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRSeqNumber()I
    .locals 2

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public getRSequenceNumber()J
    .locals 2

    #@0
    .prologue
    .line 130
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    #@2
    return-wide v0
.end method

.method public setCSeqNumber(I)V
    .locals 2
    .param p1, "cSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    #@4
    .line 116
    return-void
.end method

.method public setCSequenceNumber(J)V
    .locals 3
    .param p1, "cSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    const-wide v0, 0x80000000L

    #@b
    cmp-long v0, p1, v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 136
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Bad CSeq # "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 137
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@2b
    .line 134
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iput-object p1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    #@2
    .line 120
    return-void
.end method

.method public setRSeqNumber(I)V
    .locals 2
    .param p1, "rSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    #@4
    .line 145
    return-void
.end method

.method public setRSequenceNumber(J)V
    .locals 5
    .param p1, "rSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    #@8
    const-wide v2, 0x80000000L

    #@d
    cmp-long v0, v0, v2

    #@f
    if-lez v0, :cond_1

    #@11
    .line 153
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Bad rSeq # "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 154
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    #@2d
    .line 151
    return-void
.end method
