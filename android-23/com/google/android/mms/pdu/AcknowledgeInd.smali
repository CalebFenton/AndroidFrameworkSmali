.class public Lcom/google/android/mms/pdu/AcknowledgeInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 38
    const/16 v0, 0x85

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMessageType(I)V

    #@8
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMmsVersion(I)V

    #@b
    .line 40
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setTransactionId([B)V

    #@e
    .line 35
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 48
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x91

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 67
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 86
    return-void
.end method
