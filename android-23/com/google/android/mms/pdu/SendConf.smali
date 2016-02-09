.class public Lcom/google/android/mms/pdu/SendConf;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 33
    const/16 v0, 0x81

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendConf;->setMessageType(I)V

    #@8
    .line 31
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 41
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x92

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
    .line 89
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 60
    return-void
.end method

.method public setResponseStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x92

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 79
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 98
    return-void
.end method
