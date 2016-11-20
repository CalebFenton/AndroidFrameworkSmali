.class public Lgov/nist/javax/sip/header/RSeq;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RSeq.java"

# interfaces
.implements Ljavax/sip/header/RSeqHeader;


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a382L


# instance fields
.field protected sequenceNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "RSeq"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 46
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 63
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSeqNumber()J
    .locals 2

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    #@2
    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 2

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
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
    .line 72
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
    .line 73
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@11
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Bad seq number "

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
    .line 73
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 75
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RSeq;->sequenceNumber:J

    #@2b
    .line 70
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
    .line 84
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    #@4
    .line 83
    return-void
.end method
